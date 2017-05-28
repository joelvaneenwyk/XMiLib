/// \file
/// \author Xavier Michelon
///
/// \brief Implementation of debug log


#ifndef XMILIB__DEBUG__LOG__H
#define XMILIB__DEBUG__LOG__H


#include "DebugLogEntry.h"


namespace xmilib {



//**********************************************************************************************************************
/// \brief Debug log class
///
/// The class inherits from QAbastractTableModel, so it can be used as a model for a QTableView
//**********************************************************************************************************************
class DebugLog: public QAbstractTableModel
{
   Q_OBJECT
public: // member functions
	DebugLog(QObject* parent = nullptr); ///< Default constructor
	virtual ~DebugLog() override = default; ///< Default destructor
   qint64 size() const; ///< Return the number of entries in the log
   SPLogEntry const& operator[](qint64 index) const; ///< Return a constant reference to the log entry at the given index
   SPLogEntry& operator[](qint64 index); ///< Return a mutable reference to the log entry at the given index

public slots:
   void addInfo(QString const& message); ///< Add an informative message to the log
   void addWarning(QString const& message); ///< Add a warning message to the log
   void addError(QString const& message); ///< Add an error message to the log
   void addEntry(DebugLogEntry::EType type, QString const& message); ///< Add an entry to the log

private: // member functions
	DebugLog(DebugLog const&); ///< Disabled copy constructor
	DebugLog& operator=(DebugLog const&); ///< Disabled assignment operator

private: // data members
   DeqSPLogEntry entries_; ///< The log entries

   /// \todo implement limitation of number of entries in a log
   /// \todo implement logging to file
};


} // namespace xmilib


#endif // #ifndef XMILIB__DEBUG__LOG__H